# $OpenBSD: Makefile,v 1.47 2011/05/11 12:57:48 jasper Exp $

COMMENT=	sendmail milter to scan messages for viruses and spam

DISTNAME=	smtp-vilter-1.3.6
REVISION=	12

CATEGORIES=    	mail

HOMEPAGE=	http://www.etc.msys.ch/software/smtp-vilter/

SHARED_ONLY=	Yes

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m pthread milter

MASTER_SITES=  	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

NO_REGRESS=	Yes

FLAVORS=	ldap
FLAVOR?=

.if ${FLAVOR:L:Mldap}
MAKE_FLAGS+=	-DENABLE_LDAP
LIB_DEPENDS+=	databases/openldap
WANTLIB += ldap_r lber
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/etc/smtp-vilter/smtp-vilter.conf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	cp -r ${WRKSRC}/etc/smtp-vilter ${PREFIX}/share/examples/

.include <bsd.port.mk>
