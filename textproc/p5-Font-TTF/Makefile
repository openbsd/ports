# $OpenBSD: Makefile,v 1.8 2002/03/13 09:53:36 shell Exp $

COMMENT=	"perl module for TrueType font hacking"

DISTNAME=	Font-TTF-0.28
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
NEED_VERSION=	1.508

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Font

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

EXAMPLE_DIR=	${PREFIX}/share/examples/p5-Font-TTF
EG_DIR=		${WRKSRC}/Examples

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	${INSTALL_SCRIPT} ${EG_DIR}/* ${EXAMPLE_DIR}/
	
.include <bsd.port.mk>
