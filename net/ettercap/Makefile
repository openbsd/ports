# $OpenBSD: Makefile,v 1.21 2003/01/29 02:02:51 margarida Exp $

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

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-https --enable-plugins

NO_REGRESS=	Yes

.include <bsd.port.mk>
