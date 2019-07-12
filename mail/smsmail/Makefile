# $OpenBSD: Makefile,v 1.17 2019/07/12 20:47:38 sthen Exp $

COMMENT=	LDAP enabled MDA to deliver mails as SMS

DISTNAME=	smsmail-1.0.2
REVISION=	5

CATEGORIES=	mail

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c pthread ldap_r>=8 lber>=8

MASTER_SITES=	https://spacehopper.org/mirrors/
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
