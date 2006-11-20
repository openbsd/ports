# $OpenBSD: libiconv.port.mk,v 1.3 2006/11/20 12:41:40 bernd Exp $

# The RUN_DEPENDS entry is to ensure libiconv is installed. This is
# necessary so that we have charset.alias installed on static archs.
# Typically installed in PREFIX/lib.
MODLIBICONV_LIB_DEPENDS=	iconv.>=2::converters/libiconv
MODLIBICONV_RUN_DEPENDS=	:libiconv-*:converters/libiconv

LIB_DEPENDS+=			${MODLIBICONV_LIB_DEPENDS}
RUN_DEPENDS+=			${MODLIBICONV_RUN_DEPENDS}
