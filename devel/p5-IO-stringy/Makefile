# $OpenBSD: Makefile,v 1.11 2002/12/29 20:19:11 fgsch Exp $

COMMENT=		"in-core objects like strings and arrays for I/O"

VERSION=		2.108
DISTNAME=		IO-stringy-${VERSION}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5

MAINTAINER=		Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=		http://www.zeegee.com/code/perl/IO-stringy/

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=IO/}

CONFIGURE_STYLE= perl

# Install documentation
# It like pure document more than examples

EG_DIR=			${WRKBUILD}/docs
EG_LOC=			${PREFIX}/share/doc/p5-IO-stringy

post-install:
	${INSTALL_DATA_DIR} ${EG_LOC}/IO/icons
	${INSTALL_DATA} ${EG_DIR}/IO/icons/*.gif ${EG_LOC}/IO/icons/
	${INSTALL_DATA} ${EG_DIR}/IO/*.pm.html ${EG_LOC}/IO/
	${INSTALL_DATA} ${EG_DIR}/index* ${EG_LOC}/

.include <bsd.port.mk>
