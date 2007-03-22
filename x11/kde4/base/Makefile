# $OpenBSD: Makefile,v 1.1.1.1 2007/03/22 22:24:32 espie Exp $

COMMENT=		"K Desktop Environment, base"
DISTNAME=		kdebase-${VERSION}

LIB_DEPENDS+=	Half,Iex,IlmImf,Imath::graphics/openexr \
		gif::graphics/libungif \
		bz2::archivers/bzip2 \
		pcre,pcreposix::devel/pcre \
		sasl2::security/cyrus-sasl2 \
		usb::devel/libusb


WANTLIB += GL GLU ICE SM X11 XRes Xau Xcomposite Xcursor Xdmcp
WANTLIB += Xext Xfixes Xft Xi Xinerama Xpm Xrandr Xrender Xss
WANTLIB += Xt Xtst c fontconfig freetype jpeg m png pthread ssl
WANTLIB += stdc++ util xkbfile z
WANTLIB += Qt3Support QtDBus QtGui QtNetwork QtSvg QtXml

.include <bsd.port.mk>
