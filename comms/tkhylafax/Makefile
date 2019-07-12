# $OpenBSD: Makefile,v 1.33 2019/07/12 20:43:48 sthen Exp $

COMMENT=	Tcl/Tk interface to Sam Leffler's fax package

DISTNAME=	tkhylafax-3.2
REVISION=	2
CATEGORIES=	comms

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://ftp.hylafax.org/contrib/tkhylafax/ \
		ftp://ftp.hylafax.org/contrib/tkhylafax/ \
		http://mirror.aarnet.edu.au/pub/hylafax/contrib/tkhylafax/ \
		ftp://ftp.ntua.gr/pub/net/hylafax/contrib/tkhylafax/

MODULES=	x11/tk
BUILD_DEPENDS=	${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS=	comms/hylafax \
		print/gv

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile \
		${WRKSRC}/tkhylafax-defaults ${WRKSRC}/tkhylafax.man

.include <bsd.port.mk>
