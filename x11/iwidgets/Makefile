# $OpenBSD: Makefile,v 1.1.1.1 2006/10/28 20:38:25 steven Exp $

PKG_ARCH=	*

COMMENT=	"Iwidgets Mega Widget Set"

VERSION=	4.0.1
DISTNAME=	iwidgets${VERSION}
PKGNAME=	iwidgets-${VERSION}

CATEGORIES=	x11 x11/tk devel

HOMEPAGE=	http://incrtcl.sourceforge.net/iwidgets/

MAINTAINER=	Nikns Siankin <nikns@secure.lv>

# BSD style
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=incrtcl/}

BUILD_DEPENDS=	:tk-${TK_VERSION}.*:x11/tk/${TK_VERSION}
RUN_DEPENDS=	::x11/itk
REGRESS_DEPENDS=${RUN_DEPENDS}
# This regression test wants an X11 display
REGRESS_IS_INTERACTIVE=	Yes

NO_BUILD=	Yes

TCL_VERSION=	8.4
TK_VERSION=	8.4
ITK_VERSION=	3.3
ITCL_VERSION=	3.3

CONFIGURE_STYLE=gnu dest

CONFIGURE_ARGS=	--with-tcl=${LOCALBASE}/lib/tcl${TCL_VERSION} \
		--with-tk=${LOCALBASE}/lib/tk${TK_VERSION}

CONFIGURE_ENV=	ITCL_VERSION=${ITCL_VERSION}

pre-configure:
	@perl -pi -e 's,^\.HS,\.TH,' ${WRKBUILD}/doc/*.n

do-regress:
	cd ${WRKSRC} && env IWIDGETS_LIBRARY=${WRKSRC} \
		${PREFIX}/bin/wish${TK_VERSION} tests/all.tcl 

.include <bsd.port.mk>
