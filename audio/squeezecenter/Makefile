# $OpenBSD: Makefile,v 1.5 2009/07/12 19:58:28 sthen Exp $

COMMENT =	streaming audio server for Squeezebox network music players

V =		7.3.3
PKGNAME =	squeezecenter-${V}
DISTNAME =	squeezecenter-${V}-noCPAN
CATEGORIES =	audio net

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE =	http://www.slimdevices.com/pi_features.html

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

RUN_DEPENDS =	::audio/flac \
		::audio/lame \
		::audio/wavpack \
		:mysql-server-*:databases/mysql,-server \
		:p5-Cache-Cache->=1.04:devel/p5-Cache-Cache \
		:p5-Carp-Clan->=5.3:devel/p5-Carp-Clan \
		:p5-Class-Accessor->=0.31:devel/p5-Class-Accessor \
		:p5-Class-C3->=0.11:devel/p5-Class-C3 \
		:p5-Class-Data-Accessor->=0.03:devel/p5-Class-Data-Accessor \
		:p5-Class-Data-Inheritable->=0.04:devel/p5-Class-Data-Inheritable \
		:p5-Class-Inspector->=1.16:devel/p5-Class-Inspector \
		:p5-DBD-mysql->=3.0002:databases/p5-DBD-mysql \
		:p5-DBI->=1.604:databases/p5-DBI \
		:p5-DBIx-Class->=0.07001:databases/p5-DBIx-Class \
		:p5-DBIx-Migration->=0.05:databases/p5-DBIx-Migration \
		:p5-Data-Dump->=1.06:devel/p5-Data-Dump \
		:p5-Data-URIEncode->=0.11:www/p5-Data-URIEncode \
		:p5-Digest-SHA1->=2.11:security/p5-Digest-SHA1 \
		:p5-Encode-Detect->=1.01:textproc/p5-Encode-Detect \
		:p5-Exporter-Lite->=0.02:devel/p5-Exporter-Lite \
		:p5-File-BOM->=0.13:devel/p5-File-BOM \
		:p5-File-Next->=1.02:devel/p5-File-Next \
		:p5-File-ReadBackwards->=1.04:devel/p5-File-ReadBackwards \
		:p5-File-Slurp->=9999.12:devel/p5-File-Slurp \
		:p5-File-Which->=0.05:sysutils/p5-File-Which \
		:p5-GD->=2.35:graphics/p5-GD \
		:p5-HTML-Parser->=3.48:www/p5-HTML-Parser \
		:p5-I18N-LangTags->=0.35:devel/p5-I18N-LangTags \
		:p5-IO-String->=1.07:devel/p5-IO-String \
		:p5-JSON-XS->=1.5:converters/p5-JSON-XS \
		:p5-JSON-XS-VersionOneAndTwo->=0.31:converters/p5-JSON-XS-VersionOneAndTwo \
		:p5-libwww->=5.805:www/p5-libwww \
		:p5-Log-Log4perl->=1.07:devel/p5-Log-Log4perl \
		:p5-Math-VecStat->=0.08:math/p5-Math-VecStat \
		:p5-Net-DNS->=0.58:net/p5-Net-DNS \
		:p5-Net-IP->=1.24:net/p5-Net-IP \
		:p5-Net-UPnP->=1.2.1:net/p5-Net-UPnP \
		:p5-PAR->=0.970:devel/p5-PAR \
		:p5-Path-Class->=0.13:devel/p5-Path-Class \
		:p5-POE->=0.9989:devel/p5-POE \
		:p5-POE-XS-Queue-Array->=0.002:devel/p5-POE-XS-Queue-Array \
		:p5-Proc-Background->=1.08:devel/p5-Proc-Background \
		:p5-SQL-Abstract->=1.20:databases/p5-SQL-Abstract \
		:p5-Template->=2.15:textproc/p5-Template \
		:p5-Text-Unidecode->=0.04:textproc/p5-Text-Unidecode \
		:p5-Tie-Cache-LRU->=0.21:devel/p5-Tie-Cache-LRU \
		:p5-Tie-Cache-LRU-Expires->=0.54:devel/p5-Tie-Cache-LRU-Expires \
		:p5-Tie-IxHash->=1.21:devel/p5-Tie-IxHash \
		:p5-Tie-LLHash->=1.003:devel/p5-Tie-LLHash \
		:p5-Tie-RegexpHash->=0.13:devel/p5-Tie-RegexpHash \
		:p5-Time-TimeDate->=1.16:devel/p5-Time-TimeDate \
		:p5-URI->=1.35:www/p5-URI \
		:p5-URI-Find->=0.16:www/p5-URI-Find \
		:p5-XML-Parser->=2.34:textproc/p5-XML-Parser \
		:p5-XML-Simple->=2.15:textproc/p5-XML-Simple \
		:p5-YAML-Syck->=0.64:devel/p5-YAML-Syck \
		:p5-XML-XSPF-*:textproc/p5-XML-XSPF
 
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
