# $OpenBSD: Makefile,v 1.8 2010/10/18 18:36:56 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		Perl API to flowd binary logfiles

DISTNAME=		flowd-0.9.1
PKGNAME=		p5-${DISTNAME}
REVISION=		0
CATEGORIES=		net devel

HOMEPAGE=		http://www.mindrot.org/flowd.html

MAINTAINER=		Damien Miller <djm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www2.mindrot.org/files/flowd/

WRKSRC=			${WRKDIR}/${DISTNAME}/Flowd-perl
BUILD_DEPENDS=		::net/flowd
CONFIGURE_STYLE=	perl
USE_GROFF =	Yes

post-patch:
	perl -pi -e "s|%%LOCALBASE%%|${LOCALBASE}|" ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
