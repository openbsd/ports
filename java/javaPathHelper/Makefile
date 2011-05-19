# $OpenBSD: Makefile,v 1.6 2011/05/19 02:39:06 william Exp $

COMMENT=		helper script for launching java applications

DISTNAME=		javaPathHelper-0.3
REVISION=		0
CATEGORIES=		java

HOMEPAGE=		http://www.intricatesoftware.com/OpenBSD/java

MAINTAINER=		kurt@openbsd.org

MASTER_SITES=		http://www.intricatesoftware.com/OpenBSD/java/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=		Yes
NO_REGRESS=		Yes

do-install:
	@sed -e "s+%%LOCALBASE%%+${TRUEPREFIX}+g" \
		-e "s+%%PKG_DBDIR%%+${PKG_DBDIR}+g" \
		${WRKBUILD}/javaPathHelper.in > ${WRKBUILD}/javaPathHelper
	${INSTALL_SCRIPT} ${WRKBUILD}/javaPathHelper ${PREFIX}/bin

.include <bsd.port.mk>
