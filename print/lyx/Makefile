# $OpenBSD: Makefile,v 1.19 2001/08/10 04:49:22 obecian Exp $

COMMENT=	"graphical frontend for LaTeX (nearly WYSIWYG)"

DISTNAME=	lyx-1.1.6fix3
CATEGORIES=	print
NEED_VERSION=	1.364
MASTER_SITES=	ftp://ftp.lyx.org/pub/lyx/stable/ \
		ftp://ftp.sdsc.edu/pub/other/lyx/stable/ \
		ftp://ftp.lip6.fr/pub/lyx/stable/

HOMEPAGE=	http://www.lyx.org/

MAINTAINER=	Mark Grimes <obecian@openbsd.org>

# quasi-GPL (linked to closed source library)
# no limitation of license; considered GPL
# see http://www.lyx.org/about/license.php3 for additional info
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	latex::print/teTeX/base
RUN_DEPENDS=	latex::print/teTeX/base \
		ispell::textproc/ispell
LIB_DEPENDS=	xforms::x11/xforms

CONFIGURE_STYLE=	gnu
STRIP=
CONFIGURE_ARGS+=--with-extra-lib=${LOCALBASE}/lib \
	--with-extra-inc="${LOCALBASE}/include \
	${LOCALBASE}/include/X11"

post-install:
	@strip ${PREFIX}/bin/lyx

.include <bsd.port.mk>
