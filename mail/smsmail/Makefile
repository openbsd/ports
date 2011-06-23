# $OpenBSD: Makefile,v 1.10 2011/06/23 22:50:27 naddy Exp $

COMMENT=	LDAP enabled MDA to deliver mails as SMS

DISTNAME=	smsmail-1.0.2
REVISION=	2

CATEGORIES=    	mail

HOMEPAGE=	http://www.etc.msys.ch/software/smsmail/

SHARED_ONLY=	Yes

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c pthread ldap_r>=8 lber>=8

MASTER_SITES=  	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	databases/openldap
RUN_DEPENDS=	comms/hylafax

FAKE_FLAGS=	BINDIR=${PREFIX}/bin \
		MANDIR=${PREFIX}/man/man \
		SPATH=${PREFIX}/share/examples/smsmail

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/etc/openldap/schema/sms.schema \
		${PREFIX}/share/examples/smsmail

.include <bsd.port.mk>
