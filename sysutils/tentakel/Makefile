# $OpenBSD: Makefile,v 1.5 2004/08/03 21:31:07 xsa Exp $

COMMENT=	"distributed command execution"

DISTNAME=	tentakel-2.1.2
CATEGORIES=	sysutils
MAINTAINER=	Sebastian Stark <seb@todesplanet.de>
HOMEPAGE=	http://tentakel.biskalar.de/

# BSD + LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tentakel/}
EXTRACT_SUFX=	.tgz

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
