# $OpenBSD: Makefile,v 1.34 2009/08/30 20:45:24 sthen Exp $

COMMENT=	sendmail milter to scan messages for viruses and spam

DISTNAME=	smtp-vilter-1.3.6
PKGNAME=	${DISTNAME}p2

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

MASTER_SITES=  	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

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
