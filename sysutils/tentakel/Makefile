# $OpenBSD: Makefile,v 1.11 2010/08/30 17:57:31 fgsch Exp $

COMMENT=	distributed command execution

DISTNAME=	tentakel-357
REVISION =	1
CATEGORIES=	sysutils
MAINTAINER=	Sebastian Stark <seb@todesplanet.de>
HOMEPAGE=	http://tentakel.biskalar.de/

MODPY_EGG_VERSION = 2.2.1

# BSD + LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://spacehopper.org/mirrors/

MODULES=	lang/python

WRKSRC=		${WRKDIST}/py

REGRESS_IS_INTERACTIVE=	yes

do-configure:
	@perl -pi -e 's,/etc,${SYSCONFDIR},g' \
		${WRKDIST}/tentakel.1 \
		${WRKDIST}/py/tentakel

do-regress:
	@cd ${WRKSRC}/lekatnet && ${MODPY_BIN} ./config.py
	@cd ${WRKSRC}/lekatnet && ${MODPY_BIN} ./remote.py


.include <bsd.port.mk>
