# $OpenBSD: Makefile,v 1.17 2019/07/12 20:48:42 sthen Exp $

COMMENT=		Perl API to flowd binary logfiles

DISTNAME=		flowd-0.9.1
PKGNAME=		p5-${DISTNAME}
REVISION=		4
CATEGORIES=		net devel

HOMEPAGE=		http://www.mindrot.org/flowd.html

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

MASTER_SITES=		http://www2.mindrot.org/files/flowd/

WRKSRC=			${WRKDIR}/${DISTNAME}/Flowd-perl
BUILD_DEPENDS=		net/flowd
CONFIGURE_STYLE=	perl

post-patch:
	perl -pi -e "s|%%LOCALBASE%%|${LOCALBASE}|" ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
