# $OpenBSD: Makefile,v 1.16 2001/03/28 09:32:31 obecian Exp $

COMMENT=	"graphical frontend for LaTeX (nearly WYSIWYG)"

DISTNAME=	lyx-1.1.6fix1
CATEGORIES=	print
NEED_VERSION=	1.364
MASTER_SITES=	ftp://ftp.via.ecp.fr/pub/lyx/stable/

MAINTAINER=	Mark Grimes <obecian@openbsd.org>

LICENSE_TYPE=		GPL
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
CONFIGURE_ARGS+=--with-extra-lib=${LOCALBASE}/lib --with-extra-inc="${LOCALBASE}/include ${LOCALBASE}/include/X11"

post-install:
	@strip ${PREFIX}/bin/lyx

.include <bsd.port.mk>
