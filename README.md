# GroupDocs.Viewer Cloud Ruby SDK
Ruby gem for communicating with the GroupDocs.Viewer Cloud API. This SDK allows you to work with GroupDocs.Viewer Cloud REST APIs in your Ruby applications, enabling you to render documents in HTML, image, or PDF format with the flexibility to render the whole document or a custom range of pages.

## Requirements

Ruby 2.4+

## Installation

Install `groupdocs_viewer_cloud` from [RubyGems](https://rubygems.org):

```sh
gem install groupdocs_viewer_cloud
```

Or add the dependency to your Gemfile and run `bundle install`:

```ruby
gem "groupdocs_viewer_cloud", "~> 25.7"
```

## Getting Started

Please follow the [installation procedure](#installation) and then run the following code:

```ruby
# Load the gem
require 'groupdocs_viewer_cloud'

# Get your app_sid and app_key at https://dashboard.groupdocs.cloud (free registration is required).
app_sid = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
app_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

# Create instance of the API class
api_instance = GroupDocsViewerCloud::ViewApi.from_keys(app_sid, app_key)

format = "jpg"
file = File.open("myfile.txt", "r")

request = GroupDocsViewerCloud::ConvertAndDownloadRequest.new(format, file)

response = api_instance.convert_and_download(request)
```

Below is an example demonstrating how to upload a document, render it, and download the result using GroupDocs.Viewer Cloud SDK for Ruby:

```ruby
require 'groupdocs_viewer_cloud'

app_sid = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
app_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

# Upload input file to cloud storage
file_api_instance = GroupDocsViewerCloud::FileApi.from_keys(app_sid, app_key)
upload_request = GroupDocsViewerCloud::UploadFileRequest.new("myfile.txt", "C:\\Data\\myfile.txt")
file_api_instance.upload_file(upload_request)

# Render to html format
view_api_instance = GroupDocsViewerCloud::ViewApi.from_keys(app_sid, app_key)
view_options = GroupDocsViewerCloud::ViewOptions.new
view_options.file_info = GroupDocsViewerCloud::FileInfo.new
view_options.file_info.file_path = "myfile.txt"
view_options.view_format = "HTML"
view_options.output_path = "myfile.html"

create_view_request = GroupDocsViewerCloud::CreateViewRequest.new(view_options)
view_api_instance.create_view(create_view_request)

# Download result
download_request = GroupDocsViewerCloud::DownloadFileRequest.new("myfile.html")
response = file_api_instance.download_file(download_request)

puts("Expected response type is Stream: #{response.size}")
```

## Licensing
GroupDocs.Viewer Cloud Ruby SDK licensed under [MIT License](LICENSE).

## Resources
+ [**Website**](https://www.groupdocs.cloud)
+ [**Product Home**](https://products.groupdocs.cloud/viewer)
+ [**Documentation**](https://docs.groupdocs.cloud/display/viewercloud/Home)
+ [**Free Support Forum**](https://forum.groupdocs.cloud/c/viewer)
+ [**Blog**](https://blog.groupdocs.cloud/category/viewer)

## Contact Us
Your feedback is very important to us. Please feel free to contact us