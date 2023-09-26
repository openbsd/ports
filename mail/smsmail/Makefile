COMMENT=	LDAP enabled MDA to deliver mails as SMS

DISTNAME=	smsmail-1.0.2
REVISION=	6

CATEGORIES=	mail

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c pthread ldap lber

SITES=		https://spacehopper.org/mirrors/
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	databases/openldap
RUN_DEPENDS=	comms/hylafax

FAKE_FLAGS=	BINDIR=${PREFIX}/bin \
		MANDIR=${PREFIX}/man/man \
		SPATH=${PREFIX}/share/examples/smsmail

NO_TEST=	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/etc/openldap/schema/sms.schema \
		${PREFIX}/share/examples/smsmail
	chmod a+r ${PREFIX}/share/examples/smsmail/smsmail.conf

.include <bsd.port.mk>
