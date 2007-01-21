# $OpenBSD: Makefile,v 1.28 2007/01/21 13:13:04 mbalmer Exp $

COMMENT=	"sendmail milter to scan messages for viruses and spam"

DISTNAME=	smtp-vilter-1.3.6

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

FLAVORS=	ldap
FLAVOR?=

.if ${FLAVOR:L:Mldap}
MAKE_FLAGS+=	-DENABLE_LDAP
LIB_DEPENDS+=	ldap_r,lber::databases/openldap
BUILD_DEPENDS+=	::misc/libutf8
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	cp -r ${WRKSRC}/etc/smtp-vilter ${PREFIX}/share/examples/

.include <bsd.port.mk>
