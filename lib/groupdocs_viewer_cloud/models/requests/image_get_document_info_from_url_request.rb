 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="image_get_document_info_from_url_request.rb">
 #   Copyright (c) 2003-2018 Aspose Pty Ltd
 # </copyright>
 # <summary>
 #  Permission is hereby granted, free of charge, to any person obtaining a copy
 #  of this software and associated documentation files (the "Software"), to deal
 #  in the Software without restriction, including without limitation the rights
 #  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 #  copies of the Software, and to permit persons to whom the Software is
 #  furnished to do so, subject to the following conditions:
 # 
 #  The above copyright notice and this permission notice shall be included in all
 #  copies or substantial portions of the Software.
 # 
 #  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 #  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 #  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 #  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 #  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 #  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 #  SOFTWARE.
 # </summary>
 # --------------------------------------------------------------------------------------------------------------------
 #

module GroupDocsViewerCloud

  #
  # Request model for image_get_document_info_from_url operation.
  #
  class ImageGetDocumentInfoFromUrlRequest

        # The URL to retrieve document.
        attr_accessor :url
        # The file name.
        attr_accessor :file_name
        # The document password.
        attr_accessor :password
        # When this options is set to true text contained in document will be extracted and returned along with other information.
        attr_accessor :extract_text
        # Allows to render document comments. Not required if PDF document was created before.
        attr_accessor :render_comments
        # Enables rendering of document hidden pages, sheets or slides.
        attr_accessor :render_hidden_pages
        # The folder which contains specified file in storage.
        attr_accessor :folder
        # The file storage which have to be used.
        attr_accessor :storage
	
        #
        # Initializes a new instance.
        # @param url The URL to retrieve document.
        # @param file_name The file name.
        # @param password The document password.
        # @param extract_text When this options is set to true text contained in document will be extracted and returned along with other information.
        # @param render_comments Allows to render document comments. Not required if PDF document was created before.
        # @param render_hidden_pages Enables rendering of document hidden pages, sheets or slides.
        # @param folder The folder which contains specified file in storage.
        # @param storage The file storage which have to be used.
        def initialize(url, file_name = nil, password = nil, extract_text = nil, render_comments = nil, render_hidden_pages = nil, folder = nil, storage = nil)
           self.url = url
           self.file_name = file_name
           self.password = password
           self.extract_text = extract_text
           self.render_comments = render_comments
           self.render_hidden_pages = render_hidden_pages
           self.folder = folder
           self.storage = storage
        end
  end
end
