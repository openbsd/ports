# $OpenBSD: Makefile,v 1.23 2008/02/08 23:12:37 okan Exp $

COMMENT=	Tcl/Tk interface to Sam Leffler's fax package

DISTNAME=	tkhylafax-3.2
CATEGORIES=	comms

MAINTAINER=    Giovanni Bechis <g.bechis@snb.it>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.hylafax.org/contrib/tkhylafax/

BUILD_DEPENDS=	::x11/tk/8.4
RUN_DEPENDS=	::comms/hylafax \
		::print/gv

NO_REGRESS=	Yes

pre-configure:
	@perl -pi -e 's,%%LOCALBASE%%,${LOCALBASE},' ${WRKSRC}/Makefile \
		${WRKSRC}/tkhylafax-defaults
	@perl -pi -e 's,%%PREFIX%%,${PREFIX},' ${WRKSRC}/tkhylafax.man

.include <bsd.port.mk>
