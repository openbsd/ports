# $OpenBSD: Makefile,v 1.9 2011/03/10 22:52:51 sthen Exp $

COMMENT= 	database schema manipulation

DISTNAME=	SQL-Translator-0.11007
CATEGORIES=	databases devel
MODULES=	cpan
USE_GROFF =	Yes

HOMEPAGE=	http://sqlfairy.sourceforge.net/

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	databases/p5-DBI \
		devel/p5-Class-Accessor \
		devel/p5-Class-Base \
		devel/p5-Class-MakeMethods \
		devel/p5-IO-stringy>=2.110 \
		devel/p5-Parse-RecDescent \
		devel/p5-Class-Data-Inheritable \
		devel/p5-File-ShareDir \
		devel/p5-Log-Log4perl \
		devel/p5-Parse-RecDescent>=1.962002 \
		devel/p5-Test-Differences \
		devel/p5-YAML>=0.66 \
		security/p5-Digest-SHA1>=2 \
		textproc/p5-Template \
		textproc/p5-XML-Writer>=0.5

BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS= ${RUN_DEPENDS} \
		devel/p5-Graph \
		misc/p5-Spreadsheet-ParseExcel \
		textproc/p5-Text-RecordParser \
		textproc/p5-XML-LibXML

.include <bsd.port.mk>
