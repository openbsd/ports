# $OpenBSD: Makefile,v 1.9 2015/06/08 18:59:16 kurt Exp $

COMMENT=		helper script for launching java applications

DISTNAME=		javaPathHelper-1.0
CATEGORIES=		java

HOMEPAGE=		http://www.intricatesoftware.com/OpenBSD/java

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

MASTER_SITES=		http://www.intricatesoftware.com/distfiles/

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
