# $OpenBSD: Makefile,v 1.2 2006/07/18 14:11:44 steven Exp $

COMMENT= 	"database schema manipulation"

DISTNAME=	SQL-Translator-0.07
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases devel perl5

HOMEPAGE=	http://sqlfairy.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=SQL/}

BUILD_DEPENDS=	${RUN_DEPENDS}

RUN_DEPENDS=	::devel/p5-Class-Base \
		::devel/p5-Class-MakeMethods \
		::devel/p5-Parse-RecDescent \
		::devel/p5-Class-Data-Inheritable \
		::devel/p5-Log-Log4perl \
		::textproc/p5-Template

REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Sub-Uplevel \
		::devel/p5-Test-Differences \
		::devel/p5-Test-Exception \
		::graphics/p5-GD \
		::textproc/p5-XML-XPath \
		::textproc/p5-Text-RecordParser

CONFIGURE_STYLE= perl modbuild

PKG_ARCH=	*

.include <bsd.port.mk>
