# $OpenBSD: Makefile,v 1.3 2002/05/15 17:42:25 espie Exp $

DISTNAME=	Net-SNMP-4.0.1
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net devel
NEED_VERSION=	1.522

MAINTAINER=	Joshua Stein <jcs@rt.fm>

# perl artistic license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"Perl modules to access SNMP"
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

BUILD_DEPENDS=	::security/p5-Crypt-DES \
		::security/p5-Digest-HMAC \
		::security/p5-Digest-MD5 \
		::security/p5-Digest-SHA1
CONFIGURE_STYLE= perl

.include <bsd.port.mk>
