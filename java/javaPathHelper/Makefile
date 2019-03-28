# $OpenBSD: Makefile,v 1.10 2019/03/28 18:57:34 kurt Exp $

COMMENT=		helper script for launching java applications

DISTNAME=		javaPathHelper-2.0
CATEGORIES=		java

HOMEPAGE=		https://github.com/bsdkurt/javaPathHelper

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

MASTER_SITES=		https://github.com/bsdkurt/javaPathHelper/archive/2.0/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

NO_BUILD=		Yes
NO_TEST=		Yes

do-install:
	@sed -e "s+%%LOCALBASE%%+${TRUEPREFIX}+g" \
		-e "s+%%PKG_DBDIR%%+${PKG_DBDIR}+g" \
		${WRKBUILD}/javaPathHelper.in > ${WRKBUILD}/javaPathHelper
	${INSTALL_SCRIPT} ${WRKBUILD}/javaPathHelper ${PREFIX}/bin

.include <bsd.port.mk>
