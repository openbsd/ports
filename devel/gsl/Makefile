# $OpenBSD: Makefile,v 1.14 2003/02/09 22:15:45 lebel Exp $

COMMENT=	"GNU Scientific Library"

DISTNAME=	gsl-0.6
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEWARE:=gsl/}
HOMEPAGE=	http://sources.redhat.com/gsl/

MAINTAINER=	Bruno Rohee <rohee@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

# gcc3
MODULES=                gcc3
MODGCC3_ARCHES=         sparc64
MODGCC3_LANGS+=         c++

.include <bsd.port.mk>
