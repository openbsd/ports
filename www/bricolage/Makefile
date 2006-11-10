# $OpenBSD: Makefile,v 1.1.1.1 2006/11/10 17:04:37 sturm Exp $

COMMENT=	"content management system"

DISTNAME=	bricolage-1.10.2
CATEGORIES=	www perl5

HOMEPAGE=	http://www.bricolage.cc/

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}downloads/

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::databases/p5-DBD-Pg \
		:postgresql-server->=7.3:databases/postgresql,-server \
		::devel/p5-Cache-Mmap \
		::devel/p5-Data-UUID \
		::devel/p5-DateTime \
		::devel/p5-Devel-Symdump \
		::devel/p5-List-MoreUtils \
		::devel/p5-MLDBM \
		::devel/p5-Term-ReadPassword \
		::devel/p5-Test-Class \
		::devel/p5-Test-File-Contents \
		::devel/p5-Test-MockModule \
		::net/p5-Net-SFTP \
		::graphics/p5-Image-Info \
		::sysutils/p5-Unix-Syslog \
		::textproc/p5-Template \
		::textproc/p5-Text-Diff-HTML \
		::textproc/p5-Text-LevenshteinXS \
		::textproc/p5-Text-WordDiff \
		::textproc/p5-XML-Simple \
		::textproc/p5-XML-Writer \
		::www/p5-Apache-Session \
		::www/p5-HTML-Template-Expr \
		::www/p5-MasonX-Interp-WithCallbacks \
		::www/p5-SOAP-Lite

# needed for other settings to take effect
CONFIGURE_STYLE=perl

MAKE_FLAGS=	INSTALL_VERBOSITY=QUIET
ALL_TARGET=	build

PKG_ARCH=	*

do-configure:
	@sed -e "s,%%PREFIX%%,${PREFIX}," ${FILESDIR}/openbsd > \
		${WRKSRC}/inst/defaults/standard
	@perl -pi -e "s,%%PREFIX%%,${PREFIX},g" ${WRKSRC}/inst/config.pl \
		${WRKSRC}/INSTALL ${WRKSRC}/bin/bric_*
	@cd ${WRKSRC} && make all

# bulk creation of man pages fails for these, perl bug?
post-build:
	@rm ${WRKSRC}/lib/blib/man3/Bric::Dist::Action::DTDValidate.3p
	@rm ${WRKSRC}/lib/blib/man3/Bric::Util::Alerted.3p
	@cd ${WRKSRC}/lib && perl "-MExtUtils::Command::MM" -e pod2man "--" \
		--section=3 --perm_rw=644 \
		Bric/Dist/Action/DTDValidate.pm blib/man3/Bric::Dist::Action::DTDValidate.3p \
		Bric/Util/Alerted.pm blib/man3/Bric::Util::Alerted.3p

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/bricolage/sql/Pg
	${INSTALL_DATA} ${WRKSRC}/inst/Pg.sql ${PREFIX}/share/bricolage/sql/Pg
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bricolage
	${INSTALL_DATA} ${WRKSRC}/INSTALL ${PREFIX}/share/doc/bricolage

.include <bsd.port.mk>
