# $OpenBSD: Makefile,v 1.53 2013/05/09 18:47:53 jasper Exp $

COMMENT=	sendmail milter to scan messages for viruses and spam

DISTNAME=	smtp-vilter-1.3.8
REVISION=	0

CATEGORIES=    	mail

HOMEPAGE=	http://www.etc.msys.ch/software/smtp-vilter/

SHARED_ONLY=	Yes

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m pthread milter

MASTER_SITES=  	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

NO_TEST=	Yes

FLAVORS=	ldap
FLAVOR?=

.if ${FLAVOR:Mldap}
MAKE_FLAGS+=	-DENABLE_LDAP
LIB_DEPENDS+=	databases/openldap
WANTLIB += ldap_r lber
.endif

FAKE_FLAGS=	BINDIR=${PREFIX}/sbin \
		LIBDIR=${PREFIX}/lib/smtp-vilter \
		MANDIR=${PREFIX}/man/man \
		SPATH=${PREFIX}/share/examples/smtp-vilter

pre-configure:
	${SUBST_CMD} ${WRKSRC}/etc/smtp-vilter/smtp-vilter.conf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	cp -r ${WRKSRC}/etc/smtp-vilter ${PREFIX}/share/examples/

.include <bsd.port.mk>
