# $OpenBSD: Makefile,v 1.3 2001/04/17 15:16:46 shell Exp $

COMMENT=	"perl module for TrueType font hacking"

DISTNAME=	Font-TTF-0.22
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
NEED_VERSION=	1.391

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
EG_FILES=	StripCmap addpclt makemono ttfdeltable ttfenc \
		ttfwidth xmldump zerohyph

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
.for i in ${EG_FILES}
	${INSTALL_SCRIPT} ${EG_DIR}/$i.plx ${EXAMPLE_DIR}/$i.plx
.endfor
	
.include <bsd.port.mk>
