# $OpenBSD: Makefile,v 1.17 2004/12/27 13:28:35 alek Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"perl module for using OpenSSL"

VERSION=	1.23
DISTNAME=	Net_SSLeay.pm-${VERSION}
PKGNAME=	p5-Net-SSLeay-${VERSION}
CATEGORIES=	security perl5
NOT_FOR_ARCHES=	${NO_SHARED_ARCHES}

HOMEPAGE=	http://www.bacus.pt/Net_SSLeay/index.html
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto ssl

CONFIGURE_STYLE= perl

PLDIR=	${PREFIX}/share/examples/p5-Net-SSLeay
SRCDIR=	${WRKSRC}/examples

post-install:
	${INSTALL_DATA_DIR} ${PLDIR}
	${INSTALL_SCRIPT} ${SRCDIR}/*.pl ${PLDIR}/
	${INSTALL_DATA} ${SRCDIR}/req.conf ${PLDIR}/req.conf

.include <bsd.port.mk>
