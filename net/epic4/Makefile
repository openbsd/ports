# $OpenBSD: Makefile,v 1.11 2000/03/11 08:19:44 brad Exp $
# $FreeBSD: Makefile,v 1.13 1999/03/01 16:18:30 mph Exp $

DISTNAME=	epic4-2000
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.epicsol.org/pub/epic/EPIC4-BETA/ \
		ftp://mirror.pipex.net/pub/epic/EPIC4-BETA/ \
		ftp://totem.fix.no/pub/mirrors/epic/EPIC4-BETA/
DISTFILES=	epic4-2000.tar.gz epic4pre2-help.tar.gz
EXTRACT_ONLY=	epic4-2000.tar.gz

NEED_VERSION=	1.218

MAINTAINER=	brad@openbsd.org

FAKE=	Yes

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	Yes
#CONFIGURE_ARGS=	--with-socks5="${LOCALBASE}/lib"

FAKE_FLAGS=	IP="${WRKINST}"

post-install:
	@cd ${PREFIX}/share/epic && tar -zxf ${FULLDISTDIR}/epic4pre2-help.tar.gz

.include <bsd.port.mk>
