# $OpenBSD: Makefile,v 1.1.1.1 2007/06/26 14:07:16 jcs Exp $

COMMENT=	"Ruby XMPP/Jabber library"

DISTNAME=	xmpp4r-0.3.1
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	net

MAINTAINER=	joshua stein <jcs@openbsd.org>

HOMEPAGE=	http://home.gna.org/xmpp4r/

MASTER_SITES=	http://download.gna.org/xmpp4r/
EXTRACT_SUFX=	.tgz

# ruby license
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby setup

post-install:
	@mkdir -p ${PREFIX}/share/examples/ruby-xmpp4r
	@mv ${PREFIX}/share/doc/xmpp4r/examples/* \
		${PREFIX}/share/examples/ruby-xmpp4r/
	@rm -rf ${PREFIX}/share/doc/xmpp4r

.include <bsd.port.mk>
