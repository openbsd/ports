# $OpenBSD: Makefile,v 1.22 2003/02/16 18:17:57 margarida Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"multi-purpose sniffer/interceptor/logger"

VER=		0.6.9
DISTNAME=	ettercap-${VER}
CATEGORIES=	net

HOMEPAGE=	http://ettercap.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ettercap/} \
		${MASTER_SITE_PACKETSTORM:=sniffers/ettercap/}

MAINTAINER=	Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		gcc3   
MODGCC3_ARCHES=		sparc64

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-https --enable-plugins

NO_REGRESS=	Yes

.include <bsd.port.mk>
