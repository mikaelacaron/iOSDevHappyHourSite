import Foundation
import Ignite

struct MainTheme: Theme {
    func render(page: Page, context: PublishingContext) -> HTML {
        HTML {
            Head(for: page, in: context)

            Body {
                Section {
                    page.body
                }
                .class("col-sm-10", "mx-auto")

                BetterSocialFooter()
            }
        }
    }
}
