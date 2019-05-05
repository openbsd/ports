# $OpenBSD: Makefile,v 1.3 2019/05/05 17:09:07 naddy Exp $

VERSION =	0.13.0

NAME =		lxqt-l10n
DISTNAME =	${NAME}-${VERSION}

MULTI_PACKAGES += -about -config -compton-conf
MULTI_PACKAGES += -notificationd -openssh-askpass
MULTI_PACKAGES += -panel -policykit -powermanagement
MULTI_PACKAGES += -runner -session -sudo -libfm-qt
MULTI_PACKAGES += -main -lximage-qt -obconf-qt -pavucontrol-qt
MULTI_PACKAGES += -pcmanfm-qt -qterminal -qtermwidget

.for i in ${MULTI_PACKAGES}
COMMENT$i =             LXQt translations
# set standard PKGNAMEs, override below for some subpackages
PKGNAME$i =             lxqt$i-l10n-${VERSION}
.endfor

COMMENT-libfm-qt = libfm-qt translations
COMMENT-main = liblxqt translations
COMMENT-compton-conf = compton-conf translations
COMMENT-lximage-qt = lximage-qt translations
COMMENT-obconf-qt = obconf-qt translations
COMMENT-pavucontrol-qt = pavucontrol-qt translations
COMMENT-pcmanfm-qt = pcmanfm-qt translations
COMMENT-qterminal = qterminal translations
COMMENT-qtermwidget = qtermwidget translations

PKGNAME-libfm-qt = libfm-qt-l10n-${VERSION}
PKGNAME-main = liblxqt-l10n-${VERSION}
PKGNAME-compton-conf = compton-conf-l10n-${VERSION}
PKGNAME-lximage-qt = lximage-qt-l10n-${VERSION}
PKGNAME-obconf-qt = obconf-qt-l10n-${VERSION}
PKGNAME-pavucontrol-qt = pavucontrol-qt-l10n-${VERSION}
PKGNAME-pcmanfm-qt = pcmanfm-qt-l10n-${VERSION}
PKGNAME-qterminal = qterminal-l10n-${VERSION}
PKGNAME-qtermwidget = qtermwidget-l10n-${VERSION}
REVISION =0
REVISION-main =1
REVISION-qterminal =1
REVISION-qtermwidget =1

BUILD_DEPENDS +=	x11/lxqt/build-tools

CONFIGURE_ARGS +=	-DWITH_LXQT_ADMIN:BOOL=OFF

.include <bsd.port.mk>
