COMMENT=	sendmail milter to scan messages for viruses and spam

DISTNAME=	smtp-vilter-1.3.6
EPOCH=		0
REVISION=	7

CATEGORIES=	mail

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c m pthread milter

SITES=		https://spacehopper.org/mirrors/
EXTRACT_SUFX=	.tgz

FIX_EXTRACT_PERMISSIONS=	Yes

LIB_DEPENDS=	mail/sendmail,-libmilter

NO_TEST=	Yes

FLAVORS=	ldap
FLAVOR?=

.if ${FLAVOR:Mldap}
MAKE_FLAGS+=	-DENABLE_LDAP
LIB_DEPENDS+=	databases/openldap
WANTLIB += ldap lber
.endif

CFLAGS+=	-I${LOCALBASE}/include
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
