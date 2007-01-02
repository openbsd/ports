# $OpenBSD: Makefile,v 1.1.1.1 2007/01/02 19:11:15 robert Exp $

SHARED_ONLY=	Yes

COMMENT=	"Ruby library for retrieving facts from operating systems"

VERSION=	1.3.5
DISTNAME=	facter-${VERSION}
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	sysutils
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://reductivelabs.com/projects/facter/
MASTER_SITES=	http://reductivelabs.com/downloads/facter/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# GPL license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

NO_REGRESS=	Yes
NO_BUILD=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ruby-facter
	@cd ${WRKSRC} && ${FAKE_FLAGS} ${RUBY} install.rb
	${INSTALL_DATA} ${WRKSRC}/etc/facter.conf \
			${PREFIX}/share/examples/ruby-facter 

.include <bsd.port.mk>
