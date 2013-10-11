# $OpenBSD: Makefile,v 1.13 2013/10/11 23:50:31 naddy Exp $

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

post-patch:
	perl -pi -e "s|%%LOCALBASE%%|${LOCALBASE}|" ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
