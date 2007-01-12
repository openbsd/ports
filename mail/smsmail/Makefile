# $OpenBSD: Makefile,v 1.2 2007/01/12 14:30:31 mbalmer Exp $

COMMENT=	"LDAP enabled MDA to deliver mails as SMS"

DISTNAME=	smsmail-1.0.2
PKGNAME=	${DISTNAME}p0

CATEGORIES=    	mail

HOMEPAGE=	http://www.etc.msys.ch/software/smsmail/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

SHARED_ONLY=	Yes

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c pthread

MASTER_SITES=  	ftp://ftp.etc.msys.ch/pub/sources/smsmail/
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	ldap_r.>=8,lber.>=8::databases/openldap
RUN_DEPENDS=	::comms/hylafax

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/etc/openldap/schema/sms.schema \
		${PREFIX}/share/examples/smsmail

.include <bsd.port.mk>
