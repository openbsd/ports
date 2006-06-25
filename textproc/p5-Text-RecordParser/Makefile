# $OpenBSD: Makefile,v 1.1.1.1 2006/06/25 15:20:01 espie Exp $

COMMENT= 	"parse records in CSV-like formats"

DISTNAME=	Text-RecordParser-v1.2.1
PKGNAME=	p5-Text-RecordParser-1.2.1
CATEGORIES=	textproc devel perl5


# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Text/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-version \
		::devel/p5-List-MoreUtils \
		::devel/p5-Readonly \
		::devel/p5-Class-Accessor

REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Exception \
		::textproc/p5-Text-TabularDisplay

CONFIGURE_STYLE= perl modbuild

PKG_ARCH=	*

.include <bsd.port.mk>
