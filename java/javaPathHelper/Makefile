# $OpenBSD: Makefile,v 1.12 2019/07/12 20:47:15 sthen Exp $

COMMENT=		helper script for launching java applications

GH_ACCOUNT=		bsdkurt
GH_PROJECT=		javaPathHelper
GH_TAGNAME=		2.0

CATEGORIES=		java

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

NO_BUILD=		Yes
NO_TEST=		Yes

do-install:
	@sed -e "s+%%LOCALBASE%%+${TRUEPREFIX}+g" \
		-e "s+%%PKG_DBDIR%%+${PKG_DBDIR}+g" \
		${WRKBUILD}/javaPathHelper.in > ${WRKBUILD}/javaPathHelper
	${INSTALL_SCRIPT} ${WRKBUILD}/javaPathHelper ${PREFIX}/bin

.include <bsd.port.mk>
