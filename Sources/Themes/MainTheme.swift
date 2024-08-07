import Foundation
import Ignite

struct MainTheme: Theme {
    func render(page: Page, context: PublishingContext) -> HTML {
        HTML {
            Head(for: page, in: context) {
                MetaLink(href: "https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css", rel: "stylesheet")
                    .addCustomAttribute(name: "integrity", value: "sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH")
                    .addCustomAttribute(name: "crossorigin", value: "anonymous")
                MetaLink(href: "https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css", rel: "stylesheet")
            }

            Body {
                Section {
                    page.body
                }
                .class("col-sm-10", "mx-auto")

                SocialFooter()
                
                Script(file: "https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js")
                    .addCustomAttribute(name: "integrity", value: "sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r")
                    .addCustomAttribute(name: "crossorigin", value: "anonymous")
                Script(file: "https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js")
                    .addCustomAttribute(name: "integrity", value: "sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy")
                    .addCustomAttribute(name: "crossorigin", value: "anonymous")
            }
        }
    }
}
