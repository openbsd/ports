# $OpenBSD: Makefile,v 1.28 2007/06/02 14:54:53 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT-main=	"Tk 8.4 bindings for Perl"
COMMENT-demo=	"demonstrate the features of ptk"

MODULES=	cpan
VERSION=	804.027
DISTNAME=	Tk-${VERSION}
PKGNAME-main=	p5-Tk-${VERSION}p2
PKGNAME-demo=	p5-Tk-demo-${VERSION}p0
CATEGORIES=	x11 devel

# GPL + custom
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=	-main -demo

WANTLIB-main=	X11 m z
LIB_DEPENDS-main=png.>=4::graphics/png

RUN_DEPENDS=	:p5-HTML-Parser-*:www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}


RUN_DEPENDS-demo=	::x11/p5-Tk
PKG_ARCH-demo=		*

USE_X11=	Yes

REGRESS_IS_INTERACTIVE=	Yes
REGRESS_FLAGS=	DISPLAY="${DISPLAY}" XAUTHORITY="${HOME}/.Xauthority"

pre-configure:
	@perl -i -pe 's,%%LOCALBASE%%,${LOCALBASE},g' ${WRKSRC}/PNG/Makefile.PL

pre-regress:
.ifndef DISPLAY
	@echo requires access to X11; exit 1
.endif


.include <bsd.port.mk>
