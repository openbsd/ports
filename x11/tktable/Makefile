# $OpenBSD: Makefile,v 1.6 2001/07/09 17:11:23 pvalchev Exp $

COMMENT=	"tk extension"

DISTNAME=	Tktable2.6
PKGNAME=	Tktable-2.6
CATEGORIES=	x11
NEED_VERSION=	1.402
MASTER_SITES= 	http://tcl.activestate.com/community/hobbs/tcl/capp/tkTable/

HOMEPAGE= 	http://tktable.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	wish8.3::x11/tk/8.3

WRKDIST=	${WRKDIR}/${DISTNAME}/unix

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--with-tcl=${PREFIX}/lib/tcl8.3 \
		--with-tk=${PREFIX}/lib/tk8.3

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/Tktable
	@cp ${WRKSRC}/../demos/* ${PREFIX}/share/examples/Tktable

.include <bsd.port.mk>
