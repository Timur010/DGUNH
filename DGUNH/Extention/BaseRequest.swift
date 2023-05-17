//
//  HTTPClient.swift
//  DGUNH
//
//  Created by timur on 17.05.2023.
//

import Foundation

extension BaseRequest {
    func createBodyWithParameters(parameters: [String: Any]?, medias: [Media], boundary: String) -> Data {
        var body = Data()
        
        if parameters != nil {
            for (key, value) in parameters! {
                body.appendString(string: "--\(boundary)\r\n")
                body.appendString(string: "Content-Disposition: form-data; name=\"\(key)\"\r\n\r\n")
                body.appendString(string: "\(value)\r\n")
                body.appendString(string: "--\(boundary)--\r\n")
            }
        }
        
        let mimetype = "image/jpg"
        let filename = String(Int(Date().timeIntervalSince1970)) + "Img.jpg"
        for media in medias {
            for image in media.media {
                body.appendString(string: "--\(boundary)\r\n")
                body.appendString(string: "Content-Disposition: form-data; name=\"\(media.mediaName)\"; filename=\"\(filename)\"\r\n")
                body.appendString(string: "Content-Type: \(mimetype)\r\n\r\n")
                body.append(image)
                body.appendString(string: "\r\n")
                body.appendString(string: "--\(boundary)--\r\n")
            }
        }
        return body
    }
}
