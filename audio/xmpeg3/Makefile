# $OpenBSD: Makefile,v 1.9 2000/03/27 18:17:27 espie Exp $

BROKEN=		unsupported and not working properly

DISTNAME=	xmp3_1.0.0
PKGNAME=	xmpeg3-1.0
CATEGORIES=	audio tk80
NEED_VERSION=	1.230
MASTER_SITES=	ftp://ftp.funet.fi/pub/sci/audio/mpeg/amp/
EXTRACT_SUFX=	.tgz

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	amp::audio/amp \
		wish8.0::x11/tk/8.0

WRKDIST=		${WRKDIR}/xmpeg3
NO_BUILD=	yes

post-patch:
	@/usr/bin/perl -pi -e "s|\@\@PREFIX\@\@|${PREFIX}|;" ${WRKSRC}/xmpeg3

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/xmpeg3 ${PREFIX}/bin

.include <bsd.port.mk>
