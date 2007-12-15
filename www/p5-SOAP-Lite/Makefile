# $OpenBSD: Makefile,v 1.5 2007/12/15 20:14:16 simon Exp $

COMMENT=	client and server-side SOAP implementation

MODULES=	cpan
DISTNAME=	SOAP-Lite-0.69
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	www

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
		::www/mod_perl \
		::net/p5-Net-Jabber

CONFIGURE_ARGS+=	--noprompt \
			--HTTP-Client --HTTPS-Client \
			--MAILTO-Client --FTP-Client \
			--HTTP-Daemon --HTTP-Apache \
			--noHTTP-FCGI --POP3-Server \
			--IO-Server --noMQ \
			--JABBER --MIMEParser \
			--TCP --HTTP

post-extract:
	rm -rf ${WRKSRC}/lib/OldDocs

.include <bsd.port.mk>
