import MondrianLayout
import StorybookKit
import UIKit

let book = Book(title: "BoxLayout2") {

  BookSection(title: "Sample") {

    BookPreview {
      ExampleView(width: nil, height: nil) { (view: UIView) in
        view.buildSublayersLayout {

          HStackConstraint {
            VStackConstraint {
              UIView.mock(
                backgroundColor: .mondrianRed,
                preferredSize: .init(width: 28, height: 28)
              )

              UIView.mock(
                backgroundColor: .layeringColor,
                preferredSize: .init(width: 28, height: 28)
              )

              UIView.mock(
                backgroundColor: .mondrianYellow,
                preferredSize: .init(width: 28, height: 28)
              )

              UIView.mock(
                backgroundColor: .layeringColor,
                preferredSize: .init(width: 28, height: 28)
              )

              HStackConstraint {
                UIView.mock(
                  backgroundColor: .layeringColor,
                  preferredSize: .init(width: 28, height: 28)
                )
                UIView.mock(
                  backgroundColor: .layeringColor,
                  preferredSize: .init(width: 28, height: 28)
                )
              }
            }

            VStackConstraint {
              HStackConstraint {
                UIView.mock(
                  backgroundColor: .layeringColor,
                  preferredSize: .init(width: 28, height: 28)
                )
                VStackConstraint {
                  HStackConstraint {
                    UIView.mock(
                      backgroundColor: .mondrianYellow,
                      preferredSize: .init(width: 28, height: 28)
                    )
                    UIView.mock(
                      backgroundColor: .layeringColor,
                      preferredSize: .init(width: 28, height: 28)
                    )
                  }
                  UIView.mock(
                    backgroundColor: .layeringColor,
                    preferredSize: .init(width: 28, height: 28)
                  )
                }
              }

              HStackConstraint {
                VStackConstraint {
                  UIView.mock(
                    backgroundColor: .layeringColor,
                    preferredSize: .init(width: 28, height: 28)
                  )
                  UIView.mock(
                    backgroundColor: .mondrianBlue,
                    preferredSize: .init(width: 28, height: 28)
                  )
                }

                UIView.mock(
                  backgroundColor: .layeringColor,
                  preferredSize: .init(width: 28, height: 28)
                )

                VStackConstraint {
                  UIView.mock(
                    backgroundColor: .layeringColor,
                    preferredSize: .init(width: 28, height: 28)
                  )
                  UIView.mock(
                    backgroundColor: .layeringColor,
                    preferredSize: .init(width: 28, height: 28)
                  )
                }
              }

              HStackConstraint {
                UIView.mock(
                  backgroundColor: .mondrianRed,
                  preferredSize: .init(width: 28, height: 28)
                )
                VStackConstraint {
                  UIView.mock(
                    backgroundColor: .layeringColor,
                    preferredSize: .init(width: 28, height: 28)
                  )
                  UIView.mock(
                    backgroundColor: .layeringColor,
                    preferredSize: .init(width: 28, height: 28)
                  )
                }
              }

            }

          }

        }
      }
    }

    _book_background

    _book_overlay

    _book_VStackConstraint

    _book_HStackConstraint

    _book_ZStackConstraint

    _book_SafeArea
  }
}

final class DemoView: UIView {

  private let profileImageView = UIView.mock(
    backgroundColor: .mondrianYellow,
    preferredSize: .init(width: 32, height: 32)
  )

  private let nicknameLabel = UILabel.mockMultiline(text: "Muukii")

  private let imageView = UIView.mock(backgroundColor: .mondrianYellow)

  private let likeButton = UIView.mock(
    backgroundColor: .mondrianRed,
    preferredSize: .init(width: 32, height: 32)
  )
  private let commentButton = UIView.mock(
    backgroundColor: .mondrianRed,
    preferredSize: .init(width: 32, height: 32)
  )
  private let messageButton = UIView.mock(
    backgroundColor: .mondrianRed,
    preferredSize: .init(width: 32, height: 32)
  )

  private let box = UIView.mock(backgroundColor: .mondrianYellow)
  private let box2 = UIView.mock(backgroundColor: .mondrianRed)

  init() {

    super.init(frame: .zero)

    self.buildSublayersLayout {
      VStackConstraint {
        SpaceConstraint(minLength: 10)
        SpaceConstraint(minLength: 10)
        HStackConstraint {
          ViewConstraint(profileImageView)
            .huggingPriority(.horizontal, .required)
          SpaceConstraint(minLength: 4)

          nicknameLabel
        }
        SpaceConstraint(minLength: 10)
        SpaceConstraint(minLength: 10)
        ViewConstraint(imageView)
          .aspectRatio(1)
        SpaceConstraint(minLength: 10)
        HStackConstraint {
          likeButton
          SpaceConstraint(minLength: 2)
          commentButton
          SpaceConstraint(minLength: 2)
          messageButton
        }
        ZStackConstraint {
          box.viewConstraint.width(100).aspectRatio(CGSize(width: 3, height: 4))
          box2.viewConstraint.width(50).aspectRatio(CGSize(width: 1, height: 2))
        }
      }
    }

  }

  required init?(
    coder: NSCoder
  ) {
    fatalError("init(coder:) has not been implemented")
  }

}