# $OpenBSD: Makefile,v 1.8 2010/11/15 00:22:48 espie Exp $

COMMENT =	streaming audio server for Squeezebox network music players

# note, newer versions want p5-EV which in turn wants threaded perl
V =		7.3.3
PKGNAME =	squeezecenter-${V}
DISTNAME =	squeezecenter-${V}-noCPAN
REVISION =	0
CATEGORIES =	audio net

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE =	http://wiki.slimdevices.com/index.php/SqueezeCenter

# Main software is GPLv2, supplied with some CPAN modules packaged,
# but unfortunately also with proprietary (required) firmware, also
# image files/fonts etc which may not be redistributed without an
# explicit permission being granted.
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	No
PERMIT_DISTFILES_CDROM =No
PERMIT_DISTFILES_FTP =	No

EXTRACT_SUFX =	.tgz

MASTER_SITES =	http://downloads.slimdevices.com/SqueezeCenter_v${V}/

WRKDIST =	${WRKDIR}/${DISTNAME:S/.no-cpan-arch//}

RUN_DEPENDS =	audio/flac \
		audio/lame \
		audio/wavpack \
		databases/mysql,-server \
		STEM->=1.04:devel/p5-Cache-Cache \
		STEM->=5.3:devel/p5-Carp-Clan \
		STEM->=0.31:devel/p5-Class-Accessor \
		STEM->=0.11:devel/p5-Class-C3 \
		STEM->=0.03:devel/p5-Class-Data-Accessor \
		STEM->=0.04:devel/p5-Class-Data-Inheritable \
		STEM->=1.16:devel/p5-Class-Inspector \
		STEM->=3.0002:databases/p5-DBD-mysql \
		STEM->=1.604:databases/p5-DBI \
		STEM->=0.07001:databases/p5-DBIx-Class \
		STEM->=0.05:databases/p5-DBIx-Migration \
		STEM->=1.06:devel/p5-Data-Dump \
		STEM->=0.11:www/p5-Data-URIEncode \
		STEM->=2.11:security/p5-Digest-SHA1 \
		STEM->=1.01:textproc/p5-Encode-Detect \
		STEM->=0.02:devel/p5-Exporter-Lite \
		STEM->=0.13:devel/p5-File-BOM \
		STEM->=1.02:devel/p5-File-Next \
		STEM->=1.04:devel/p5-File-ReadBackwards \
		STEM->=9999.12:devel/p5-File-Slurp \
		STEM->=0.05:sysutils/p5-File-Which \
		STEM->=2.35:graphics/p5-GD \
		STEM->=3.48:www/p5-HTML-Parser \
		STEM->=0.35:devel/p5-I18N-LangTags \
		STEM->=1.07:devel/p5-IO-String \
		STEM->=1.5:converters/p5-JSON-XS \
		STEM->=0.31:converters/p5-JSON-XS-VersionOneAndTwo \
		STEM->=5.805:www/p5-libwww \
		STEM->=1.07:devel/p5-Log-Log4perl \
		STEM->=0.08:math/p5-Math-VecStat \
		STEM->=0.58:net/p5-Net-DNS \
		STEM->=1.24:net/p5-Net-IP \
		STEM->=1.2.1:net/p5-Net-UPnP \
		STEM->=0.970:devel/p5-PAR \
		STEM->=0.13:devel/p5-Path-Class \
		STEM->=0.9989:devel/p5-POE \
		STEM->=0.002:devel/p5-POE-XS-Queue-Array \
		STEM->=1.08:devel/p5-Proc-Background \
		STEM->=1.20:databases/p5-SQL-Abstract \
		STEM->=2.15:textproc/p5-Template \
		STEM->=0.04:textproc/p5-Text-Unidecode \
		STEM->=0.21:devel/p5-Tie-Cache-LRU \
		STEM->=0.54:devel/p5-Tie-Cache-LRU-Expires \
		STEM->=1.21:devel/p5-Tie-IxHash \
		STEM->=1.003:devel/p5-Tie-LLHash \
		STEM->=0.13:devel/p5-Tie-RegexpHash \
		STEM->=1.16:devel/p5-Time-TimeDate \
		STEM->=1.35:www/p5-URI \
		STEM->=0.16:www/p5-URI-Find \
		STEM->=2.34:textproc/p5-XML-Parser \
		STEM->=2.15:textproc/p5-XML-Simple \
		STEM->=0.64:devel/p5-YAML-Syck \
		textproc/p5-XML-XSPF
 
# remove squeezecenter's redistributed CPAN modules, we use our own.
# remove MySQL error message file, it's for a specific version.
pre-configure:
	@rm ${WRKSRC}/MySQL/errmsg.sys
	@ln -s ${TRUEPREFIX}/share/mysql/english/errmsg.sys \
	    ${WRKSRC}/MySQL/errmsg.sys  
	@rm -rf ${WRKSRC}/CPAN
	@${SUBST_CMD} -c ${FILESDIR}/Custom.pm \
	    ${WRKSRC}/Slim/Utils/OS/Custom.pm

NO_BUILD =	yes
NO_REGRESS =	yes
PMDIR =		libdata/perl5/site_perl/Slim
SSLIBDIR =	libdata/squeezecenter
SSSHAREDIR =	share/squeezecenter

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/slimserver.pl ${PREFIX}/bin/slimserver.pl
	${INSTALL_PROGRAM} ${WRKSRC}/scanner.pl ${PREFIX}/bin/scanner.pl
	${INSTALL_DATA_DIR} ${PREFIX}/{${PMDIR},${SSLIBDIR},${SSSHAREDIR}}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/squeezecenter
.for i in types convert modules
	${INSTALL_DATA} ${WRKSRC}/$i.conf ${PREFIX}/share/examples/squeezecenter
.endfor
	cd ${WRKSRC}/Slim/; tar cf - * | tar xf - -C ${PREFIX}/${PMDIR}/
	cd ${WRKSRC}/lib/; tar cf - * | tar xf - -C ${PREFIX}/${SSLIBDIR}/
	cd ${WRKSRC}/; tar cf - Firmware Graphics HTML IR MySQL Plugins \
	    SQL strings.txt | tar xf - -C ${PREFIX}/${SSSHAREDIR}/
	touch ${PREFIX}/share/examples/squeezecenter/empty
	find ${PREFIX} -name '*.orig' -print0 | xargs -0 rm

.include <bsd.port.mk>
