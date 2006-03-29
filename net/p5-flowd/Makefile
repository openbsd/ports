# $OpenBSD: Makefile,v 1.2 2006/03/29 11:50:31 msf Exp $

SHARED_ONLY=		Yes

COMMENT=		"Perl API to flowd binary logfiles"

DISTNAME=		flowd-0.9
PKGNAME=		${DISTNAME:S/^/p5-/}
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
BUILD_DEPENDS=		flowd::net/flowd
CONFIGURE_STYLE=	perl

post-patch:
	perl -pi -e "s|%%LOCALBASE%%|${LOCALBASE}|" ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
