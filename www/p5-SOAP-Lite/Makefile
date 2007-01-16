# $OpenBSD: Makefile,v 1.2 2007/01/16 17:52:07 simon Exp $

COMMENT=	"client and server-side SOAP implementation"

MODULES=	cpan
DISTNAME=	SOAP-Lite-0.55
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	www

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::mail/p5-MIME-tools \
		::www/p5-URI \
		::security/p5-IO-Socket-SSL \
		::security/p5-Crypt-SSLeay \
		::www/p5-libwww \
		::mail/p5-MIME-Lite \
		::textproc/p5-XML-Parser \
		::www/mod_perl

CONFIGURE_ARGS+=	--noprompt \
			--HTTP-Client --HTTPS-Client \
			--MAILTO-Client --FTP-Client \
			--HTTP-Daemon --HTTP-Apache \
			--noHTTP-FCGI --POP3-Server \
			--IO-Server --noMQ \
			--noJABBER --MIMEParser \
			--TCP --HTTP

.include <bsd.port.mk>
