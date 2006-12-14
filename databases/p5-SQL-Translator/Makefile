# $OpenBSD: Makefile,v 1.3 2006/12/14 19:09:40 dassow Exp $

COMMENT= 	"database schema manipulation"

DISTNAME=	SQL-Translator-0.07
CATEGORIES=	databases devel
MODULES=	cpan

HOMEPAGE=	http://sqlfairy.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Class-Base \
		::devel/p5-Class-MakeMethods \
		::devel/p5-Parse-RecDescent \
		::devel/p5-Class-Data-Inheritable \
		::devel/p5-Log-Log4perl \
		::textproc/p5-Template

REGRESS_DEPENDS=::devel/p5-Sub-Uplevel \
		::devel/p5-Test-Differences \
		::devel/p5-Test-Exception \
		::graphics/p5-GD \
		::textproc/p5-XML-XPath \
		::textproc/p5-Text-RecordParser

CONFIGURE_STYLE= modbuild

.include <bsd.port.mk>
