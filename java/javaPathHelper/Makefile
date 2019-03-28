# $OpenBSD: Makefile,v 1.11 2019/03/28 19:02:53 sthen Exp $

COMMENT=		helper script for launching java applications

GH_ACCOUNT=		bsdkurt
GH_PROJECT=		javaPathHelper
GH_TAGNAME=		2.0

CATEGORIES=		java

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

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
