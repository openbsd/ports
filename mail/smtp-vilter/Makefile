# $OpenBSD: Makefile,v 1.25 2006/11/12 12:21:21 mbalmer Exp $

COMMENT=	"sendmail milter to scan messages for viruses and spam"

DISTNAME=	smtp-vilter-1.3.4
PKGNAME=	${DISTNAME}p0

CATEGORIES=    	mail

HOMEPAGE=	http://www.etc.msys.ch/software/smtp-vilter/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

SHARED_ONLY=	Yes

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m pthread milter

MASTER_SITES=  	ftp://ftp.etc.msys.ch/pub/sources/smtp-vilter/
EXTRACT_SUFX=	.tgz

FAKE_FLAGS=	${MAKE_FLAGS}

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	cp -r ${WRKSRC}/etc/smtp-vilter ${PREFIX}/share/examples/

.include <bsd.port.mk>
