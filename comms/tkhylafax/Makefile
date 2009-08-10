# $OpenBSD: Makefile,v 1.25 2009/08/10 21:51:13 sthen Exp $

COMMENT=	Tcl/Tk interface to Sam Leffler's fax package

DISTNAME=	tkhylafax-3.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	comms

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.hylafax.org/contrib/tkhylafax/ \
		ftp://mirror.aarnet.edu.au/pub/hylafax/contrib/tkhylafax/ \
		ftp://gd.tuwien.ac.at/infosys/fax/hylafax/contrib/tkhylafax/ \
		ftp://ftp.ntua.gr/pub/net/hylafax/contrib/tkhylafax/

MODULES=	x11/tk
BUILD_DEPENDS=	${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS=	::comms/hylafax \
		::print/gv

NO_REGRESS=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile \
		${WRKSRC}/tkhylafax-defaults ${WRKSRC}/tkhylafax.man

.include <bsd.port.mk>
