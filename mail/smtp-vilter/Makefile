# $OpenBSD: Makefile,v 1.18 2006/02/17 07:44:39 mbalmer Exp $

COMMENT=	"sendmail milter to scan messages for viruses and spam"

DISTNAME=	smtp-vilter-1.3.1

CATEGORIES=    	mail
SHARED_LIBS=	vilter-attachment	7.1 \
		vilter-clamd		7.1 \
		vilter-icap		7.1 \
		vilter-spamd		7.1

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

MAKE_FLAGS=	LIBvilter-attachment_VERSION=${LIBvilter-attachment_VERSION} \
		LIBvilter-clamd_VERSION=${LIBvilter-clamd_VERSION} \
		LIBvilter-icap_VERSION=${LIBvilter-icap_VERSION} \
		LIBvilter-spamd_VERSION=${LIBvilter-spamd_VERSION}
FAKE_FLAGS=	${MAKE_FLAGS}

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	cp -r ${WRKSRC}/etc/smtp-vilter ${PREFIX}/share/examples/

.include <bsd.port.mk>
