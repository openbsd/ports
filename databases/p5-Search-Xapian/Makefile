# $OpenBSD: Makefile,v 1.10 2012/08/23 14:54:31 sthen Exp $

COMMENT=		perl bindings for the xapian search library

V=			1.2.8
REVISION=		0
DISTNAME=		Search-Xapian-${V}.0
CATEGORIES=		databases
MODULES=		cpan
USE_GROFF =		Yes

HOMEPAGE=		http://xapian.org/

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m stdc++ xapian

MASTER_SITES=		http://oligarchy.co.uk/xapian/${V}/

LIB_DEPENDS=		databases/xapian-core>=1.2.8

.include <bsd.port.mk>
