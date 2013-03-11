# $OpenBSD: Makefile,v 1.12 2013/03/11 11:35:54 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		Perl API to flowd binary logfiles

DISTNAME=		flowd-0.9.1
PKGNAME=		p5-${DISTNAME}
REVISION=		2
CATEGORIES=		net devel

HOMEPAGE=		http://www.mindrot.org/flowd.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=		http://www2.mindrot.org/files/flowd/

WRKSRC=			${WRKDIR}/${DISTNAME}/Flowd-perl
BUILD_DEPENDS=		net/flowd
CONFIGURE_STYLE=	perl
USE_GROFF =		Yes

post-patch:
	perl -pi -e "s|%%LOCALBASE%%|${LOCALBASE}|" ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
